import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;

    bool isOK = (G.length == 2 && G[0][1] == 2);
    writeln(isOK ? "Yes" : "No");
}
