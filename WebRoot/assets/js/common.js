	//计算字符长度 汉字算两个
	function getTrueLength(str) {  
	    if (str == null) return 0;  
	    if (typeof str != "string"){  
	        str += "";  
	    }  
	    return str.replace(/[^\x00-\xff]/g,"01").length; 
    } 