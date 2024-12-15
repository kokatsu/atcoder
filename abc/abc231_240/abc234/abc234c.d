import std;

void main() {
    long K;
    readf("%d\n", K);

    dchar[] res;

    while (K > 0) {
        res ~= (K % 2 == 0 ? '0' : '2');
        K /= 2;
    }
    res.reverse;

    res.writeln;
}
