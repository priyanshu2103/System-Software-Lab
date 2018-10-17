/* fileDirOpen.c: list a directory.
 *
 * Tested (to be buggy :-)).
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <dirent.h>

#define DEFAULT_PATH "/etc"


void
list (const char *dirname)
{
  char buffer[32];
  DIR *directory;
  struct dirent *file;

  directory = opendir(dirname);

  while ((file = readdir(directory)))
    {
      /* prepend directory name to the file name */
      strcpy(buffer, dirname);
      strcat(buffer, "/");
      strcat(buffer, file->d_name);

      puts(buffer);

      free(file);
    }

  closedir(directory);
}

int
main (int argc, char **argv)
{
  if (argc >= 2)
    list(argv[1]);
  else
    list(DEFAULT_PATH);

  return 0;
}