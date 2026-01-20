import std;

void main() {
    int N, C;
    readfln("%d %d", N, C);

    int[] T = readln.chomp.split.to!(int[]);

    int res, pre = int.min / 4;
    foreach (t; T) {
        if (t - pre >= C) {
            ++res;
            pre = t;
        }
    }

    res.writeln;
}
