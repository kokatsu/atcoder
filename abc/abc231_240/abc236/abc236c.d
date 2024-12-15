import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = readln.chomp.split.to!(string[]);
    auto T = readln.chomp.split.to!(string[]);

    bool[string] list;
    foreach (t; T)
        list[t] = true;

    foreach (s; S) {
        writeln(s in list ? "Yes" : "No");
    }
}
