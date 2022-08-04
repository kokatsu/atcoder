import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    long dot;
    foreach (a, b; zip(A, B)) {
        dot += a * b;
    }

    writeln(dot == 0 ? "Yes" : "No");
}