import std;

void main() {
    string X = readln.chomp;

    long[] cnts = new long[](10);
    foreach (x; X) {
        ++cnts[x-'0'];
    }

    long t;
    dchar[] res;
    foreach_reverse (x; X) {
        long num = t;
        foreach (i, c; cnts) {
            num += i * c;
        }

        res ~= ((num % 10) + '0').to!dchar;
        t = num / 10;
        --cnts[x-'0'];
    }

    while (t > 0) {
        res ~= ((t % 10) + '0').to!dchar;
        t /= 10;
    }

    res.reverse;

    res.writeln;
}