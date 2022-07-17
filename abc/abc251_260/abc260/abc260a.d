import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;
    foreach (g; G) {
        if (g[1] == 1) {
            g[0].writeln;
            return;
        }
    }

    writeln(-1);
}