import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto a = readln.chomp.split.to!(int[]);

    int cnt = a.count(-1).to!int;
    int xor = a.filter!"a >= 0".fold!"a ^ b"(X);

    if (cnt == 0 && xor != 0) {
        writeln(-1);
        return;
    }

    if (cnt == 1) {
        if (xor <= X) {
            a = a.replaceFirst([-1], [xor]);
        }
        else {
            writeln(-1);
            return;
        }
    }
    else {
        int f = xor.truncPow2, s = xor - f;
        if (f <= X && s <= X) {
            a = a.replaceFirst([-1], [f]);
            a = a.replaceFirst([-1], [s]);
        }
        else {
            writeln(-1);
            return;
        }
    }

    int[] res = a.replace(-1, 0);

    assert(res.fold!"a ^ b" == X);

    writefln("%(%s %)", res);
}