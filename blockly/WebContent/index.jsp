<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Programming Training Project</title>


<script src=".\blockly_source\blockly_compressed.js"></script>
<script src=".\blockly_source\javascript_compressed.js"></script>
<script src=".\blockly_source\python_compressed.js"></script>
<script src=".\blockly_source\php_compressed.js"></script>
<script src=".\blockly_source\blocks_compressed.js"></script>
<script src=".\blockly_source\msg\js\en.js"></script>

<script>
Blockly.Blocks['start_block'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("start");
		    this.setNextStatement(true, null);
		    this.setColour(230);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['go_straight'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("go_straight");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(300);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['turn_left'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("turn left");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(200);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['turn_right'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("turn right");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(100);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['finish'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("finish");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(false, null);
		    this.setColour(0);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['control_if'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("if")
		        .appendField("wall is ")
		        .appendField(new Blockly.FieldDropdown([["True","T"], ["False","F"]]), "NAME");
		    this.appendStatementInput("NAME")
		        .setCheck(null);
		    this.appendDummyInput()
		        .appendField("else");
		    this.appendStatementInput("NAME")
		        .setCheck(null);
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(0);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['while_do'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField("while")
		        .appendField("wall is")
		        .appendField(new Blockly.FieldDropdown([["True","T"], ["False","F"]]), "NAME");
		    this.appendStatementInput("NAME")
		        .setCheck(null)
		        .appendField("do");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(315);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['repeat_for'] = {
		  init: function() {
		    this.appendValueInput("NAME")
		        .setCheck(null)
		        .appendField("repeat");
		    this.appendStatementInput("NAME")
		        .setCheck(null);
		    this.appendDummyInput()
		        .appendField("and");
		    this.setPreviousStatement(true, null);
		    this.setNextStatement(true, null);
		    this.setColour(180);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
Blockly.Blocks['set_number'] = {
		  init: function() {
		    this.appendDummyInput()
		        .appendField(new Blockly.FieldTextInput("0"), "Num");
		    this.setOutput(true, "Number");
		    this.setColour(230);
		    this.setTooltip('');
		    this.setHelpUrl('');
		  }
		};
</script>

</head>


<body>
  <h1>We can get out of here!!</a>

<br>
<button onclick="runJS()">Run Code</button>
<br>


	
<xml id="toolbox" style="display: none">
  <block type="start_block"></block>
  <sep gap="24"></sep>
  <block type="go_straight"></block>
  <sep gap="24"></sep>
  <block type="turn_left"></block>
  <sep gap="24"></sep>
  <block type="turn_right"></block>
  <sep gap="24"></sep>
  <block type="set_number"></block>
  <sep gap="24"></sep>
  <block type="finish"></block>
  <sep gap="24"></sep>
  <block type="repeat_for"></block>
  <sep gap="24"></sep>
  <block type="control_if"></block>
  <sep gap="24"></sep>
  <block type="while_do"></block>
  <sep gap="24"></sep>
  <block type="repeat_for"></block>
 
</xml>
  
</xml>


<div id="blocklyDiv" style="height: 500px;  width: 700px; float:left;">
</div> 

<div id="empty" style="height:500px; width:30px; float:left;">
</div>

<div id="visualization" style="height: 500px; width:530px;  float:left; border:1px solid black">
<!-- Map Setting -->
    <canvas id="canvas0" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(0)">start</canvas>
    <canvas id="canvas1" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(1)"></canvas>
    <canvas id="canvas2" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(2)"></canvas>
    <canvas id="canvas3" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(3)"></canvas>
    <canvas id="canvas4" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(4)"></canvas>
    <canvas id="canvas5" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(5)"></canvas>
    <canvas id="canvas6" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(6)"></canvas>
    <canvas id="canvas7" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(7)"></canvas>
    <br/>
    <canvas id="canvas8" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(8)"></canvas>
    <canvas id="canvas9" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(9)"></canvas>
    <canvas id="canvas10" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(10)"></canvas>
    <canvas id="canvas11" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(11)"></canvas>
    <canvas id="canvas12" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(12)"></canvas>
    <canvas id="canvas13" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(13)"></canvas>
    <canvas id="canvas14" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(14)"></canvas>
    <canvas id="canvas15" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(15)"></canvas>
    <br/>
    <canvas id="canvas16" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(16)"></canvas>
    <canvas id="canvas17" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(17)"></canvas>
    <canvas id="canvas18" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(18)"></canvas>
    <canvas id="canvas19" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(19)"></canvas>
    <canvas id="canvas20" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(20)"></canvas>
    <canvas id="canvas21" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(21)"></canvas>
    <canvas id="canvas22" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(22)"></canvas>
    <canvas id="canvas23" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(23)"></canvas>
    <br/>
    <canvas id="canvas24" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(24)"></canvas>
    <canvas id="canvas25" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(25)"></canvas>
    <canvas id="canvas26" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(26)"></canvas>
    <canvas id="canvas27" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(27)"></canvas>
    <canvas id="canvas28" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(28)"></canvas>
    <canvas id="canvas29" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(29)"></canvas>
    <canvas id="canvas30" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(30)"></canvas>
    <canvas id="canvas31" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(31)"></canvas>
    <br/>
    <canvas id="canvas32" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(32)"></canvas>
    <canvas id="canvas33" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(33)"></canvas>
    <canvas id="canvas34" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(34)"></canvas>
    <canvas id="canvas35" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(35)"></canvas>
    <canvas id="canvas36" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(36)"></canvas>
    <canvas id="canvas37" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(37)"></canvas>
    <canvas id="canvas38" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(38)"></canvas>
    <canvas id="canvas39" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(39)"></canvas>
    <br/>
    <canvas id="canvas40" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(8)"></canvas>
    <canvas id="canvas41" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(9)"></canvas>
    <canvas id="canvas42" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(10)"></canvas>
    <canvas id="canvas43" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(11)"></canvas>
    <canvas id="canvas44" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(12)"></canvas>
    <canvas id="canvas45" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(13)"></canvas>
    <canvas id="canvas46" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(14)"></canvas>
    <canvas id="canvas47" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(15)"></canvas>
    <br/>
    <canvas id="canvas48" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(16)"></canvas>
    <canvas id="canvas49" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(17)"></canvas>
    <canvas id="canvas50" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(18)"></canvas>
    <canvas id="canvas51" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(19)"></canvas>
    <canvas id="canvas52" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(20)"></canvas>
    <canvas id="canvas53" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(21)"></canvas>
    <canvas id="canvas54" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(22)"></canvas>
    <canvas id="canvas55" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(23)"></canvas>
    <br/>
    <canvas id="canvas56" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(24)"></canvas>
    <canvas id="canvas57" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(25)"></canvas>
    <canvas id="canvas58" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(26)"></canvas>
    <canvas id="canvas59" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(27)"></canvas>
    <canvas id="canvas60" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(28)"></canvas>
    <canvas id="canvas61" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(29)"></canvas>
    <canvas id="canvas62" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(30)"></canvas>
    <canvas id="canvas63" width="50" height="50" style="position:relative; left:15px; top:10px; border:1px solid black" onclick="canvasClicked(31)"></canvas>
</div>
<!-- 시작지점 -->
<script>
		var canvas = document.getElementById('canvas0');
		var context = canvas.getContext('2d');
		
		var x = canvas.width / 2;
		var y = canvas.height / 2;
		
		context.fillStyle = "#bbb";
		context.fillRect(0,0,50,50);
		context.fill();
		
		context.font = 'bold 10pt 굴림';
		context.textAlign = 'center';
		context.fillStyle = "#fff";
		context.fillText('Start',x,y);
</script>		
<!-- 끝지점 -->
<script>
		var canvas = document.getElementById('canvas63');
		var context = canvas.getContext('2d');
		
		var x = canvas.width / 2;
		var y = canvas.height / 2;
		
		context.fillStyle = "#bbb";
		context.fillRect(0,0,50,50);
		context.fill();
		
		context.font = 'bold 10pt 굴림';
		context.textAlign = 'center';
		context.fillStyle = "#fff";
		context.fillText('End',x,y);
</script>
	
<script>
	var workspace = Blockly.inject('blocklyDiv',
		{media: '../../media/',
        	 toolbox: document.getElementById('toolbox'),
        	 grid:
             {spacing: 20,
              length: 20,
              colour: '#ccc',
              snap: true},
         trashcan: true});

	  function runJS() {
		    Blockly.JavaScript.addReservedWords('code');
		    var code = Blockly.JavaScript.workspaceToCode();
		    alert(code);
		    try {
		      eval(code);
		    } catch (e) {
		      alert(e);
		    }
		  }
</script>

<script>
	function runCode() {
		// Generate JavaScript code and run it.
		window.LoopTrap = 1000;
		Blockly.JavaScript.INFINITE_LOOP_TRAP = 'if (--window.LoopTrap == 0) throw "Infinite loop.";\n';
		var code = Blockly.JavaScript.workspaceToCode(workspace);
		Blockly.JavaScript.INFINITE_LOOP_TRAP = null;
		try {
			eval(code);
		} catch (e) {
			alert(e);
		}
	}
</script>

</body> 

</html>