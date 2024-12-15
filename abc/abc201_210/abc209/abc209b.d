import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(long[]);

    auto Y = A.sum - N / 2;
    writeln(Y <= X ? "Yes" : "No");
}
