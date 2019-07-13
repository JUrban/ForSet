* Naproche-SAD can be run in batch mode or with a JEdit GUI.

* To run Naproche-SAD in batch mode, Haskell and Eprover need to be installed.

* Rumor has that it is advisable to install Haskell using 'Stack' instead of the full Haskell Platform.

* For Ubuntu, installation of Haskell Stack is:
`sudo apt install haskell-stack`

* Eprover installation is from source and routine (`export PATH`)

* Follow the readme instructions in the Naproche-SAD repo to run the test.

* the 'examples' directory contains 9 files in Forthel format.

* the application entry file is located in the 'app' directory.

* The 'Isabelle' directory contains 2461 lines of haskell code, these code should be used for interfacing with JEdit, which is not our focus here.

* The 'src/SAD' directory contains the main source, there are 8188 lines of them.

* the main source contains 7 modules, I guess they are roughly structured in the following, each requiring some code from Core, Data and Forthel.

-> Import -> Parser -> Prove -> Export ->

* The repo https://github.com/tertium/SAD contains the original SAD, it is already written in Haskell.
