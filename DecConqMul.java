import java.util.Arrays;

public class DecConqMul{
    int optot;
    public DecConqMul(){
        optot = 0;
    }

    public int mul(int a, int b){
        int auxRes = 0;
        int res;
        if (a < 0 || b < 0){
            res = mul2Num(Math.abs(a), Math.abs(b), auxRes);
            optot = auxRes;
            return res;
        }
        res = mul2Num(a, b, auxRes);
        optot = auxRes;
        return res;
    }

    private int mul2Num(int a, int b, int operations){
        if(a == 0){
            return a;
        }
        operations++;
        return b + (mul2Num(a - 1, b, operations));
    }

    public int mulConstant(int a, int b){
        return 2;
    }

    public int[] cross(){

    }

 
}
