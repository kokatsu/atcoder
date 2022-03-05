import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    S.sort;

    S.writeln;
}