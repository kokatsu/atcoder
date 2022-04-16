import std;

void main() {
    auto S = readln.chomp;

    auto seen = new bool[](10);
    foreach (s; S) seen[s-'0'] = true;

    foreach (i; 0 .. 10) {
        if (!seen[i]) i.writeln;
    }
}