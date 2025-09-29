import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    B.sort!"a > b";

    auto rbt = redBlackTree!true(A);

    long res;
    foreach (b; B) {
        auto ub = rbt.upperBound(b - 1);
        if (ub.empty) {
            res = -1;
            break;
        }

        res += ub.front;
        rbt.removeKey(ub.front);
    }

    res.writeln;
}
