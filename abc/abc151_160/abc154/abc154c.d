import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto U = A.uniq.array;
    writeln(U.length == N ? "YES" : "NO");
}
