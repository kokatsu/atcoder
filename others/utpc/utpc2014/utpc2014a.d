import std;

void main() {
    auto S = readln.chomp.split;

    bool existNot, existOther;
    string[] T;
    foreach_reverse (s; S) {
        if (s == "not") {
            if (existNot) {
                if (!existOther)
                    T ~= "not", T ~= "not";
            }
            existNot ^= true;
        }
        else {
            if (existNot) {
                T ~= "not";
                existNot = false;
            }
            T ~= s;
            existOther = true;
        }
    }

    if (existNot)
        T ~= "not";

    T.reverse;

    writefln("%-(%s %)", T);
}
