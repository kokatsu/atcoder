import std;

void main() {
    auto S = '0' ~ readln.chomp.to!(dchar[]);
    S.popBack;

    S.writeln;
}