package com.example.demo.question;

import java.util.Date;
import java.util.List;

import org.osgi.annotation.bundle.Requirement;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;


@RequestMapping("/question")
@RequiredArgsConstructor // 생성자의 매개변수로 필요한 객체를 자동 생성
@Controller
public class QuestionController {
	//private final QuestionRepository qRepository;
	private final QuestionService qService;
	
	//Question과 관련된 요청 형태 : /question/index, /question/insert ...
	@GetMapping("/index") //완전한 형태 : /question/index
	public String index() {
		return "index";
	}
	
	@GetMapping("/insertForm")
	public String insertForm() {
		return "question_insertForm";
	}
	
	@GetMapping("/insert")
	public String insert(Question question) {
		question.setCreateDate(new Date());
		//qRepository.save(question);
		qService.insert(question);
		return "redirect:/question/list";		//완성된 여청 형태 이용
	}
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Question> list = qService.selectAll();
		model.addAttribute("list", list);
		return "question_list";
	}
	
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable("id") int id, Model model) {
		Question question = qService.select(id);
		model.addAttribute("question", question);
		return "question_detail";
	}
	
	@GetMapping("/updateForm/{id}")
	public String updateForm(@PathVariable("id") int id, Model model) {
		Question question = qService.select(id);
		model.addAttribute("question", question);
		return "question_updateForm";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Question question) {
		//실제 수정되어야 할 데이터 => id값
		Question q = qService.select(id);
		//수정할 데이터 => question
		q.setSubject(question.getSubject());
		q.setContent(question.getContent());
		qService.insert(q);
		return "redirect:/question/list";
	}
	
	@GetMapping("/deleteForm/{id}")
	public String deleteForm(@PathVariable("id") int id,Model model) {
		model.addAttribute("id", id);
		return "question_deleteForm";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id, Question question) {
		qService.delete(id);
		return "redirect:/question/list";
	}
}










