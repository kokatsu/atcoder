import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    bool[string] list;
    foreach (p; S.permutations) {
        list[p.to!string] = true;
    }

    list.length.writeln;
}
