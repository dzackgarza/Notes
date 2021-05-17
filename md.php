<?php
	$pandoc      = "/bin/pandoc";
	$infile      = $_SERVER['QUERY_STRING'];

	$css         = "/md.css";

	$md_fileroot = "/media/dropbox/Notes";
	$md_webroot  = "/notes";
	$md_filepath = str_replace($md_webroot,$md_fileroot,$infile);	
	$md_filepath = '"' . urldecode($md_filepath) . '"';
	$command     = "$pandoc -s -c -f markdown_github+yaml_metadata_block $md_filepath -t html";

	echo shell_exec($command);
?>
