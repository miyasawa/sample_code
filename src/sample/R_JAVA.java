package sample;
import org.rosuda.JRI.REXP;
import org.rosuda.JRI.Rengine;

public class R_JAVA {
	public R_JAVA(){
		
	}
	
	public void run(){
		//VM arguments:
		//-Djava.library.path=.:/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rJava/jri/
		//Environment:
		//R_HOME
		///Library/Frameworks/R.framework/Versions/3.3/Resources
		//Rのバージョンを3.3に揃えないと動作しない
        Rengine engine = new Rengine(new String[]{"--no-save"}, false, null);
        engine.assign("a", new int[]{36});
        REXP result = engine.eval("sqrt(a)");
        System.out.println(result.asDouble());
        engine.end();
	}
	
	public double sqrt(int arg) {
        //Rengine engine = new Rengine(new String[]{"--no-save"}, false, null);
		//繰り返し実行可能
        Rengine engine = Rengine.getMainEngine();
        if (engine == null) {
        		engine = new Rengine(new String[] { "--vanilla" }, false, null);
        	}
        engine.assign("a", new int[]{arg});
        REXP result = engine.eval("sqrt(a)");
        System.out.println(result.asDouble());
        engine.end();
        
        return result.asDouble();
	}
	
	public static void main(String[] args) {
		new R_JAVA().run();
	}
}
