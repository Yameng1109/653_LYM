# source code profile, bin profile, java compile signature,class file direction

SRC = ./src
BIN = ./bin
JC = javac
RM = rm -f
JFLAGS = -d $(BIN)

# Adding source code, make sure under the source code profile

CLASSES = \
	$(SRC)/Main.java \
	$(SRC)/CalConfidence.java \
	$(SRC)/CallGraph.java

# Adding all the object code
CLASS_FILES = $(CLASSES:$(SRC)/%.java = $(BIN)%.class)

all: classes

classes: 
	mkdir -p $(BIN)    # make the folder of the bin
	$(JC) $(JFLAGS) $(CLASSES)

clean:
	$(RM) $(BIN)/*.class
