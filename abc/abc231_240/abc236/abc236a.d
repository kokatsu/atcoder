import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    int a, b;
    readf("%d %d\n", a, b);

    --a, --b;
    swap(S[a], S[b]);

    S.writeln;
}
