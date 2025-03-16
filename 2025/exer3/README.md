1. write a script in your home folder ~/masscreate.sh that creates 1000 new users with pattern  vuXXX, here vu is prefix and XXX are 000 - 999
    Script has to not ask for user input when it runs
    Script only takes command line parameters, for example,  ./masscreate.sh --prefix vu --count XXX --pass password
    Use -count option to specify number of users XXX is the number of accounts to be created
    Use default password specified with parameter --pass
2. Write a script named ~/elevate.sh that modifies permissions for ten users from vu000 to vu009 to be enabled to install packages via "apt" tool.
3. Write a script ~/suspend.sh that disables (not deletes) any requested user with prefix vuXXX, f.x., vu013