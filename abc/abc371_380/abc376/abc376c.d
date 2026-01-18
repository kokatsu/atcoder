import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    A.sort!"a > b";
    B.sort!"a > b";

    int res, pre;
    foreach (a, b; zip(A, B)) {
        if (res == 0) {
            if (a > b) {
                res = a;
            }
        }
        else {
            if (a > pre) {
                res = -1;
                break;
            }
        }

        pre = b;
    }

    if (res == 0) {
        res = A.back;
    }
    else if (res != -1 && A.back > pre) {
        res = -1;
    }

    res.writeln;
}
