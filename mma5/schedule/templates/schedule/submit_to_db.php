<?php include 'database.php';>

<?php

// create a variable
$student_id=$_POST['lesson_student_id'];
$teacher_id=$_POST['lesson_teacher_id'];
$comment=$_POST['lesson_comment'];

//Execute the query

mysqli_query($connect"INSERT INTO schedule_lesson(lesson_student_id, lesson_teacher_id, lesson_comment)
				VALUES('$student_id','$teacher_id','$comment')");

	if(mysqli_affected_rows($connect) > 0){
		echo "<p>Comment Added</p>";
		echo "<a href="{% url 'index' %}">Go Back</a>";
	} else {
		echo "Comment NOT Added<br />";
		echo mysqli_error ($connect);
	}