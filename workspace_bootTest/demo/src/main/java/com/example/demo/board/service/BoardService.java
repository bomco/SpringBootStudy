package com.example.demo.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.domain.FileVO;
import com.example.demo.board.mapper.BoardMapper;
 
@Service("com.example.demo.board.service.BoardService")
public class BoardService {
 
    @Resource(name="com.example.demo.board.mapper.BoardMapper")
    BoardMapper mBoardMapper;
    
    public List<BoardVO> boardListService() throws Exception{ //게시글 리스트
        
        return mBoardMapper.boardList();
    }
    
    public BoardVO boardDetailService(int bno) throws Exception{ //게시글 뷰
        
        return mBoardMapper.boardDetail(bno);
    }
    
    public int boardInsertService(BoardVO board) throws Exception{ //게시글 작성
        
        return mBoardMapper.boardInsert(board);
    }
    
    public int boardUpdateService(BoardVO board) throws Exception{ //게시글 수정
        
        return mBoardMapper.boardUpdate(board);
    }
    
    public int boardDeleteService(int bno) throws Exception{ //게시글 삭제
        
        return mBoardMapper.boardDelete(bno);
    }
    
    public int fileInsertService(FileVO file) throws Exception{ //파일 업로드
    	
    	return mBoardMapper.fileInsert(file);
    }
    
    public FileVO fileDetailService(int bno) throws Exception{ //파일 불러오기
    	
    	return mBoardMapper.fileDetail(bno);
    }
}