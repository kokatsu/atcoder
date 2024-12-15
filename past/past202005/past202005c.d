import std;

enum long L = 10L ^^ 9;

void main() {
    long A, R, N;
    readf("%d %d %d\n", A, R, N);

    long M = min(N - 1, 32);
    foreach (_; 0 .. M) {
        A *= R;
        if (A > L)
            break;
    }

    string res = "large";
    if (A <= L)
        res = A.to!string;

    res.writeln;
}
