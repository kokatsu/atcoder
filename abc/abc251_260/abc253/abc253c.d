import std;

void main() {
    long Q;
    readf("%d\n", Q);

    auto rbt = new RedBlackTree!(long, "a < b", true)();
    long[long] cnts;

    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split;
        long num = query[0].to!long;
        if (num == 1) {
            long x = query[1].to!long;
            rbt.insert(x);
            ++cnts[x];
        }
        else if (num == 2) {
            long x = query[1].to!long, len = query[2].to!long;
            if (x in cnts)
                len = min(len, cnts[x]);
            else
                len = 0;

            while (len > 0) {
                rbt.removeKey(x);
                --cnts[x];
                --len;
            }
        }
        else {
            long res = rbt.back - rbt.front;
            res.writeln;
        }
    }
}
