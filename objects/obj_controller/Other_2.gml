
// Delete checkpoint when player quits the game

if (file_exists("checkpoint.ini"))
{
	file_delete("checkpoint.ini")
}