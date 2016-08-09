package com.cafe24.phoenixooo.community.Service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cafe24.phoenixooo.community.Model.Article;
import com.cafe24.phoenixooo.community.Model.Comment;
import com.cafe24.phoenixooo.community.Model.ImgFile;
import com.cafe24.phoenixooo.community.Repository.BoardDao;



@Service
public class BoardServiceImpl implements BoardService
{
	private final int LINE_PER_PAGE = 3;
	
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public List<Article> getArticleList(String boardGroupCode) {

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("boardGroupCode", boardGroupCode);
        List<Article> list=boardDao.selectArticleList(	map);
        for(int i=0;i<list.size();i++)
        {
        	list.get(i).setArticleNumber(list.get(i).getArticleCode().substring(12));
        }
        return list;
	}
	
	//글 1개  가져오기
	@Override
	public Map<String, Object> getArticle(String articleCode) {
		System.out.println("BoardServiceImpl getArticle 실행");
		Map<String,Object> map = new HashMap<String, Object>();
		
		//우선 게시글 1개 가져오는 selectArticle메서드 실행
		Article article = boardDao.selectArticle(articleCode);
			
		//comment 정보 가져오기 
		Article comment = new Article();
		comment.setCommentList(boardDao.selectCommentList(map));
		
		//파일등록 정보 가져오기
		List<ImgFile> imgFile = boardDao.selectImgFileName(articleCode);
		
		
		
		map.put("article", article);
		map.put("comment", comment);
		map.put("imgFile", imgFile);
		return map;
	}
	
	//글 1개 등록
	@Override
	public String insertArticle(Article article, HttpServletRequest request) {
 
		System.out.println("articleCode 확인중->"+article.getArticleCode());
		
		//file을 제외한 나머지 정보 입력하기
		boardDao.insertArticle(article);
		
		//file을 등록하기 위해 위에서 입력한 정보들 중에서 articleCode를 가져와서 스트링에 담는다.
		String articleCode = article.getArticleCode();
		System.out.println("Mapper들렸다 와서 자동증가된 ArticleCode : " + articleCode);
		System.out.println("imgFile size : "+article.getImgFile().size());
		System.out.println("0번째 값"+article.getImgFile().get(0));
		
		//파일이 없고 글만 입력할때  파일메서드 실행 안되게 하기
		if(!article.getImgFile().get(0).isEmpty()){
			System.out.println("파일이 있으면 여기가 실행된다. 아뵤!!!!!!");
			
			
			
			//파일은 배열안에있으므로 하나씩 꺼내다 작업하자.			
			for(int i =0; i<article.getImgFile().size(); i++){
				System.out.println("if문안으로 들어옴 article.getImgFile().size() ---->"+article.getImgFile().size());
				
				
				//i번째 파일을 멀티파트파일에 담아주자
				MultipartFile file = article.getImgFile().get(i);
				
				//실제 주소를 path에 담자
				String path = request.getServletContext().getRealPath("/");
				System.out.println("실제 경로 : "+path);
				
				//전체이름
				String allName = article.getImgFile().get(i).getOriginalFilename();
				System.out.println("전체 이름 : "+allName);
			
				//잘라낼 크기를 구하자 
				int pathLength = allName.length();	//전체길이
				int cutLength = article.getImgFile().get(i).getOriginalFilename().lastIndexOf('\\')+1;	//잘라낼 시작점
				System.out.println("전체 길이 : "+pathLength);
				System.out.println("잘라낼 시작점 : "+cutLength);
				
				//사용할 파일명
				String fileName = allName.substring(cutLength,pathLength);
				System.out.println("전체이름 : "+allName);
				System.out.println("전체 이름 중 자른부분 : "+fileName);
			
				//확장자명
				int pathLength2 = allName.length();	//전체길이
				int cutLength2 = article.getImgFile().get(i).getOriginalFilename().lastIndexOf('.')+1;	//잘라낼 시작점
				String mineType  = allName.substring(cutLength2,pathLength2);
				System.out.println("mineType : "+ mineType);
				
				//이름 랜덤으로 생성하기 DB에 같은이름으로 저장되면 안되니...
				String randomName = null;
				StringBuffer buffer = new StringBuffer();
				Random random = new Random();
				String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z".split(",");
				for ( int j=0 ; j<20 ; j++ ) {
					buffer.append(chars[random.nextInt(chars.length)]);
				}
					String ints[] = "1,2,3,4,5,6,7,8,9".split(",");
					for (int j=0; j<10; j++){
						buffer.append(ints[random.nextInt(ints.length)]);
					}
				
				//생성한 randomName을 담자
				System.out.println("buffer.toString() : "+buffer.toString());
				randomName = buffer.toString();
				
				//실제로 파일을 저장하기위해서 그리고 randomName으로 저장해야하니 아래와 같이 랜덤네임으로 저장할 수 있도록 해주자
				File destFile = new File(path+"resources/upload/"+randomName+"."+mineType);
				System.out.println("실제로 저장될 파일 이름(destFile) : "+path+"resources/upload/"+randomName+"."+mineType);
				
				//랜덤네임이 중복되는 이름이 있으면 다시 새로운 랜덤네임으로 저장
				if(boardDao.selectImgFileByRandomName(randomName) == (null)){
					System.out.println("동일한 randomName 존재하지 않아요.");
					ImgFile imgFile = new ImgFile();
					
					imgFile.setArticleCode(articleCode); //게시판코드
					imgFile.setFilePath("/resources/upload/"+randomName+"."+mineType); //파일경로
					imgFile.setFileName(fileName); //파일이름
					imgFile.setRandomName(randomName); //랜덤이름
					System.out.println("imgFile경로 : "+imgFile);
					
					//여기서 드디어 File 입력
					boardDao.subAddImgFile(imgFile);
					
					try {
						//실제 resources/upload 폴더에 저장
						file.transferTo(destFile);
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
				
				}else{
					System.out.println("동일한 randomName 존재합니다.");
					insertArticle(article,request);	//재귀호출
					//새로운 randomName으로 실행
				}

			}
		}
		return articleCode;
	}
		
	//글 1개 수정
	@Override
	public Article modifyArticle(Article article) {
		int result= boardDao.updateArticle(article);
		Article article2=null;
		if(result==1)
		{
			//article2=boardDao.selectArticle(article);
		}
		return article2;
	}
	
	//글 1개 삭제
	@Override
	public int deleteArticle(Article article) {
		return boardDao.deleteArticle(article);
	}
	
	//댓글 등록
	@Override
	public int insertComment(Comment comment) {
		return boardDao.insertComment(comment);
	}
	
	
	//댓글 리스트
	public List<Comment> commentList(String articleCode){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("articleCode", articleCode);
		return boardDao.selectCommentList(map);
		
	}
	
	
	
	//댓글 삭제
	@Override
	public String deleteComment(Comment comment) {
		// TODO Auto-generated method stub
		int result=boardDao.deleteComment(comment);
		
		return comment.getArticleCode();
	}
}
