import std;

void main() {
    auto S = readln.chomp;

    auto len = S.length;
    foreach (i; 0 .. 6/len) {
        S.write;
    }
    writeln;
}