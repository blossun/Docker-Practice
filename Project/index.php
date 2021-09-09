<?php
    $conn = mysqli_connect (
        'minishop-mysql.cenbav46r9yd.ap-northeast-2.rds.amazonaws.com',
        'solar',
        'password',
        'MINISHOP',
        '3306'
    );
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: ".mysqli_connect_error();
    }
    $sql = "SELECT VERSION()";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);
    print_r($row["VERSION()"]);
?>