import std;

void main() {
    auto s = readln.chomp;

    auto len = s.length;
    foreach (i; 1 .. len) {
        if (s[i-1] == s[i]) {
            writeln(i, " ", i+1);
            return;
        }
        if (i > 1 && s[i-2] == s[i]) {
            writeln(i-1, " ", i+1);
            return;
        }
    }

    writeln(-1, " ", -1);
}