import std;

void main() {
    string S;
    readf("%s\n", S);

    auto balls = lowercase.assocArray(false.repeat);
    auto goods = new char[][](S.length);
    int index;
    foreach (s; S) {
        if (s == '(') {
            ++index;
        }
        else if (s == ')') {
            foreach (good; goods[index]) {
                balls[good] = false;
            }
            goods[index].length = 0;
            --index;
        }
        else {
            if (balls[s]) {
                "No".writeln;
                return;
            }
            balls[s] = true;
            goods[index] ~= s;
        }
    }

    "Yes".writeln;
}
