import std;

void main() {
    long N;
    readf("%d\n", N);

    writeln(-1 * (2L ^^ 31) <= N && N < 2L ^^ 31 ? "Yes" : "No");
}