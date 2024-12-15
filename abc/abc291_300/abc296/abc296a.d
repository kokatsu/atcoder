import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    auto G = S.group.array;
    writeln(G.length == N ? "Yes" : "No");
}
