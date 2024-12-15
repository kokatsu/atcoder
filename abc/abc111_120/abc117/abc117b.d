import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = readln.chomp.split.to!(int[]);

    auto S = L.sum, M = L.maxElement;

    writeln(S > M * 2 ? "Yes" : "No");
}
