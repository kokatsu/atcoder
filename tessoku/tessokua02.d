import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]);

    writeln(A.canFind!(a => a == X) ? "Yes" : "No");
}
