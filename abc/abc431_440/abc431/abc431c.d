import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    long[] H = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    auto rbt = H.redBlackTree!true;

    B.sort!"a > b";

    string res = "No";
    foreach (i, b; B) {
        auto lb = rbt.lowerBound(b + 1);

        if (lb.empty) {
            break;
        }

        rbt.removeKey(lb.back);

        if (i >= K - 1) {
            res = "Yes";
            break;
        }
    }

    res.writeln;
}
