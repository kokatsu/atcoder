import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    auto G = S.group.array;

    dchar res = G.maxElement!"a[1]"[0];
    res.writeln;
}
