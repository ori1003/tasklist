package models.validators;

import models.Task;

public class TaskValidator {
	public static String validate(Task t) {
		String content=t.getContent();
		if(content==null||content.equals("")) {
			return "タスクを入力してください。";
		}else {
			return ""; 
		}
	}
}
