extends Node








func _ready():
	pass


func start():
	JavaScript.eval(\
\
\
\
\
\
\
\
	"\n	\n	//if (top !== self) {\n		parent.cmgGameEvent(\"start\",\"\");\n	//} else {\n		//alert(\"test cmth\")				\n	//}\n	\n	", true)
		
func startlevel(LEVEL):
	JavaScript.eval(\
\
	"\n	//if (top !== self) {\n		parent.cmgGameEvent('start','" + String(LEVEL) + \
\
	"')\n	//} else {\n		//alert(" + String(LEVEL) + \
\
\
	")				\n	//}	\n	\n	", true)
	
func replaylevel(LEVEL):
	JavaScript.eval(\
\
	"\n	//if (top !== self) {\n		parent.cmgGameEvent('replay','" + String(LEVEL) + \
\
	"')\n	//} else {\n		//alert(" + String(LEVEL) + \
\
\
	")				\n	//}	\n	\n	", true)



