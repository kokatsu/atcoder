import std;

void main() {
    int T;
    readf("%d\n", T);

    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M;
    readf("%d\n", M);

    auto B = readln.chomp.split.to!(int[]);

    while (!B.empty) {
        if (A.empty)
            break;

        if (A[0] <= B[0] && B[0] <= A[0] + T)
            B.popFront;

        A.popFront;
    }

    writeln(B.empty ? "yes" : "no");
}
