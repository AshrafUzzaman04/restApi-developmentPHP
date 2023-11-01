<?php

$request = $_SERVER["REQUEST_METHOD"]; // GET, POST, PUT, DELETE, PATCH

switch ($request) {
	case 'GET':
		getmethod();
		break;
	case 'POST':
		createmethod();
		break;
	case 'PUT':
		$data = json_decode(file_get_contents("php://input"), true);
		updatemethod($data);
		break;
	case 'DELETE':
		$data = json_decode(file_get_contents("php://input"), true);
		deletemethod($data);
		break;
	default:
		echo  "REQUEST_METHOD not supported";
		break;
}

//__data Show from Database__//
function getmethod()
{
	$conn = mysqli_connect("localhost", "root", "", "quizapp");
	$stmt = $conn->query("SELECT * FROM `tech`");

	if ($stmt->num_rows > 0) {
		while ($row = $stmt->fetch_assoc()) {
			$question[] = $row;
		}
		echo json_encode($question);
	}
}


//__data insert__//
function createmethod()
{
	$conn = mysqli_connect("localhost", "root", "", "quizapp");

	$data = $_POST;

	$question = $data["question"];
	$option1 = $data["option1"];
	$option2 = $data["option2"];
	$option3 = $data["option3"];
	$option4 = $data["option4"];
	$correct_option = $data["correct_option"];


	$stmt = $conn->query("INSERT INTO `tech`(`question`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES ('$question','$option1','$option2','$option3','$option4','$correct_option')");

	if ($stmt) {
		echo "data inserted";
	} else {
		echo "error";
	}
}


//__data updated__//
function updatemethod($data)
{
	$conn = mysqli_connect("localhost", "root", "", "quizapp");

	if ($data && isset($data["id"], $data["question"], $data["option1"], $data["option2"], $data["option3"], $data["option4"], $data["correct_option"])) {
		$id = $data["id"];
		$question = $data["question"];
		$option1 = $data["option1"];
		$option2 = $data["option2"];
		$option3 = $data["option3"];
		$option4 = $data["option4"];
		$correct_option = $data["correct_option"];

		$stmt = $conn->query("UPDATE `tech` SET `question`='$question', `option1`='$option1', `option2`='$option2', `option3`='$option3', `option4`='$option4', `correct_option`='$correct_option' WHERE `id` = $id");

		if ($stmt) {
			echo "data updated successfully";
		} else {
			echo "error";
		}
	} else {
		echo "Missing or invalid data in the request.";
	}
}



//__data delete__//
function deletemethod($data)
{
	$conn = mysqli_connect("localhost", "root", "", "quizapp");

	$id = $data["id"];

	$stmt = $conn->query("DELETE FROM `tech` WHERE `id` = '$id'");

	if ($stmt) {
		echo "deleted successfully";
	} else {
		echo "error";
	}
}
