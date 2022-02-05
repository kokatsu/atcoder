import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int l = 360;
    auto list = new bool[](l);
    list[0] = true;

    long pos;
    foreach (a; A) {
        pos = (pos + a) % l;
        list[pos] = true;
    }

    long res, num;
    foreach (i; 1 .. l+1) {
        if (list[i%l]) {
            res = max(res, i-num);
            num = i;
        }
    }

    res.writeln;
}