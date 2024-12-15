import std;

void main() {
    auto c = new int[][](3, 3);
    foreach (i; 0 .. 3) {
        c[i] = readln.chomp.split.to!(int[]);
    }

    bool isOk = true;
    foreach (i; 1 .. 3) {
        isOk &= 3.iota.map!(j => c[i - 1][j] - c[i][j]).uniq.walkLength == 1;
    }

    string res = isOk ? "Yes" : "No";
    res.writeln;
}
