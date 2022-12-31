import std;

void main() {
    auto C1 = readln.chomp.to!(dchar[]);
    auto C2 = readln.chomp.to!(dchar[]);

    auto D1 = C2.dup, D2 = C1.dup;
    D1.reverse, D2.reverse;

    writeln(C1 == D1 && C2 == D2 ? "YES" : "NO");
}