package com.example.demo.question;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class QuestionService {
	//모든 DB 관련 처리르 담당 => 메서드로 선언
	private final QuestionRepository qRepository;
	
	//한 개의 데이터를 등록
	public void insert(Question question) {
		qRepository.save(question);
	}
	
	//모든 데이터 읽기
	public List<Question> selectAll(){
		List<Question> list = qRepository.findAll();
		return list;
	}
	
	//데이터 한 개 읽기
	public Question select(int id) {
		Optional<Question> question = qRepository.findById(id);
		if(question.isPresent()) 
			return question.get();
		else 
			return null;
	}
	
	//데이터 삭제
	public void delete(int id) {
		qRepository.deleteById(id);
	}
}
