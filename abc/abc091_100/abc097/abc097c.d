import std;

void main() {
    auto s = readln.chomp;

    int K;
    readf("%d\n", K);

    auto len = s.length;
    string[] list;
    foreach (i; 0 .. len) {
        foreach (j; 1 .. K+1) {
            if (i + j > len) break;
            list ~= s[i..i+j];
        }
    }

    list.sort;
    auto dict = list.uniq.array;

    string res = dict[K-1];
    res.writeln;
}