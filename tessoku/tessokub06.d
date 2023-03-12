import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N+1);
    A[1..$] = readln.chomp.split.to!(int[]);

    auto C = A.cumulativeFold!"a + b".array;

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        int num = R - L + 1, cnt = C[R] - C[L-1];

        string res = "draw";
        if (num < cnt * 2) res = "win";
        if (num > cnt * 2) res = "lose";

        res.writeln;
    }
}