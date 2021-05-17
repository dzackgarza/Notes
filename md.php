<?php
	$pandoc      = "/bin/pandoc";
	$infile      = $_SERVER['QUERY_STRING'];

	$css         = "/md.css";

	$md_fileroot = "/var/www/Notes";
	$md_webroot  = "/var/www/Notes";
	$md_filepath = str_replace($md_webroot,$md_fileroot,$infile);	
	$md_filepath = '"' . urldecode($md_filepath) . '"';
	$command     = "$pandoc -s -c -f markdown_github+yaml_metadata_block $md_filepath -t html";

  $myfile = fopen("/var/www/log.txt", "w") or die("Unable to open file!");
  fwrite($myfile, $infile);
  fclose($myfile);

	echo shell_exec($command);
?>
