import std;

void main() {
    string X;
    readf("%s\n", X);

    string[] T = ["ch", "o", "k", "u"];
    foreach (t; T) {
        X = X.replace(t, "X");
    }

    auto G = X.group.array;
    writeln(G.length == 1 && G[0][0] == 'X' ? "YES" : "NO");
}