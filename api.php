<?php
require_once 'config.php';

class API 
{
    private $conn;

    public function __construct() 
    {
        $this->conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        }
    }

    public function registerUser($username, $password) 
    {
        if(empty($username))
        {
            return $this->generateErrorResponse("Missing Username");
        }

        if(empty($password))
        {
            return $this->generateErrorResponse("Missing Password");
        }

        if(!preg_match('/[a-z]/', $password))
        {
            return $this->generateErrorResponse("Password must contain atleast one lowercase");
        }
        if(!preg_match('/[A-Z]/', $password))
        {
            return $this->generateErrorResponse("Password must contain atleast one uppercase");
        }
        if (!preg_match('/\d/', $password)) 
        {
            return $this->generateErrorResponse("Password must contain atleast one digit");
        }
        if (!preg_match('/[^\w\d\s]/', $password)) 
        {
            return $this->generateErrorResponse("Password must contain atleast one symbol");
        }
        if (strlen($password) < 8) 
        {
            return $this->generateErrorResponse("Password must be at least 8 characters long");
        }

        $stmt = $this->conn->prepare("SELECT * FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) 
        {
            return $this->generateErrorResponse("Username already exists");
        }

        $sql = "INSERT INTO `users` (`username`, `password`) VALUES (?, ?)";
        $stmt = $this->conn->prepare($sql);

        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();

        return $this->generateSuccessResponse("Registered user successfully");
    }

    public function loginUser($username , $password)
    {
        $sql = "SELECT * FROM users WHERE username = ?";
        $stmt = $this->conn->prepare($sql);
        $stmt->bind_param("s",$username);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) 
        {
            while ($row = $result->fetch_assoc()) 
            {

                if($password === $row["password"])
                {
                    return $this->generateSuccessResponse($row["userID"]);
                }
            }
        }
        return $this->generateErrorResponse("Email not in database or password incorrect");
    }



    private function generateSuccessResponse($message) 
    {
        $response = array(
            "status" => "success",
            "message" => $message
        );
        return json_encode($response);
    }

    public function generateErrorResponse($message) 
    {
        $response = array(
            "status" => "error",
            "message" => $message
        );
        return json_encode($response);
    }

    private function generateSuccessArrayResponse($array)
    {
        $response = array(
            "status" => "success",
            "timestamp" => time(),
            "data" => $array
        );
        return json_encode($response);
    }
}


$api = new API();
    if ($_SERVER["REQUEST_METHOD"] == "POST") 
    {
        $postData = json_decode(file_get_contents("php://input"), true);
        if (isset($postData["type"]) && $postData["type"] == "Register" && isset($postData["username"]) && isset($postData["password"])) 
        {
            $watchlist = isset($postData["watchlist"]) ? $postData["watchlist"] : null;
            $premium = isset($postData["premium"]) ? $postData["premium"] : null;
            $response = $api->registerUser($postData["username"], $postData["password"] , $watchlist , $premium);

            echo($response);
        }
        else if (isset($postData["type"]) && $postData["type"] == "Login" && isset($postData["username"]) && isset($postData["password"])) 
        {
            $response = $api->loginUser($postData["username"], $postData["password"]);

            echo($response);
        }
        else if (isset($postData["type"]) && $postData["type"] == "GetMovie")
        {
            $response = $api->getMovie($postData["title"], $postData["release_date"] , $postData["length"] , $postData["genre"] , $postData["rating"] , $postData["age_rating"] , $postData["summary"]);

            echo($response);
        }
        else if (isset($postData["type"]) && $postData["type"] == "AddMovie" && isset($postData["title"]) && isset($postData["release_date"]) && isset($postData["length"]) && isset($postData["genre"]) && isset($postData["summary"]))
        {
            $response = $api->addMovie($postData["title"], $postData["release_date"] , $postData["length"] , $postData["genre"] , $postData["rating"] , $postData["age_rating"] , $postData["summary"]);

            echo($response);
        }
        else if (isset($postData["type"]) && $postData["type"] == "AddMovie")
        {
            $response = $api->updateMovie($postData["movie_id"] , $postData["title"], $postData["release_date"] , $postData["length"] , $postData["genre"] , $postData["rating"] , $postData["age_rating"] , $postData["summary"]);

            echo($response);
        }
        else if (isset($postData["type"]) && $postData["type"] == "DeleteMovie")
        {
            $response = $api->deleteMovie($postData["movie_id"]);

            echo($response);
        }
        else 
        {
            echo $api->generateErrorResponse("Invalid request");
        }
    }
    else 
    {
        echo $api->generateErrorResponse("Invalid request method");
    }


?>
