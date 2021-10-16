<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="aym.css">
    <title>WHmalle</title>
</head>


<body>
<nav>
    <div class="logo">
        <a href="index.html"><img src="Ajouter_un_titre-removebg-preview.png"></a>
    </div>


    <div class="icon">
        <!-- Load icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- The form -->
        <form action="recherche.php">
            <input type="text" placeholder="Search.." name="k" value="<?php echo isset($_GET['k']) ? $_GET['k'] : ''; ?>">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
</nav>

</body>

</html>
 <?php
            $k = isset($_GET['k']) ? $_GET['k'] : '';
            $search_string = "SELECT * FROM boutiques WHERE  ";
            $display_words = "";
            $keywords = explode(' ', $k);
            foreach ($keywords as $word){
                if($word=="or" )
	                { $search_string .= " OR ";
                        $display_words .= $word.' ';
	                }
                elseif($word=='and') {
                    $search_string .= " AND ";
                    $display_words .= $word.' ';
                }
                elseif($word=='not') {
                    $search_string .= " not ";
                    $display_words .= $word.' ';
                }
                else
                    {
                        $search_string .= " keywords LIKE '%".$word."%'                      ";
                        $display_words .= $word.' ';
                    }
            }
            $search_string = substr($search_string, 0, strlen($search_string)-4);
            $display_words = substr($display_words, 0, strlen($display_words)-1);
            

$conn = mysqli_connect("localhost", "root", "", "mole");

$query = mysqli_query($conn, $search_string);
$result_count = mysqli_num_rows($query);


echo '<div class="right"><b><u>'.number_format($result_count).'</u></b> results found</div>';
echo '<div class="tow">Your search for <i>"'.$display_words.'"</i></div><hr />';

if ($result_count > 0){
	echo '<table class="search" >';

	while ($row = mysqli_fetch_assoc($query)){
		echo '<tr >
			<td><h3><a href="'.$row['url'].'">'.$row['title'].'</a></h3></td>
		</tr>
		<tr>
			<td>'.$row['description'].'</td>
		</tr>
		<tr>
			<td><i>'.$row['url'].'</i></td>
		</tr>';
	}

	echo '</table>';
}
else
	echo '<div class="erreur">There were no results for your search. Try searching for something else.</div>';
?>
