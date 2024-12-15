import std;

void main() {
    auto input = readln.chomp.split;
    auto S = input[0].to!(dchar[]);
    auto K = input[1].to!int;

    int[string] dict;
    foreach (p; S.permutations) {
        ++dict[p.to!string];
    }

    auto list = dict.keys;

    list.sort;
    list[K - 1].writeln;
}
