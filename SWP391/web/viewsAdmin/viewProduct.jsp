<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth group" data-sidebar="brand" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <title>Robotech - Admin & Dashboard Template</title>
        <meta  name="viewport"  content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta  content="Tailwind Multipurpose Admin & Dashboard Template"  name="description"/>
        <meta content="" name="Mannatthemes" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="viewsAdmin/assets/images/favicon.ico" />

        <!-- Css -->
        <!-- Main Css -->
        <link rel="stylesheet" href="viewsAdmin/assets/libs/icofont/icofont.min.css">
        <link href="viewsAdmin/assets/libs/flatpickr/flatpickr.min.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="viewsAdmin/assets/css/tailwind.min.css">
        <script>
            function autoSubmitForm() {
                document.getElementById("category").submit();
            }
            function autoSubmitForm2() {
                document.getElementById("subcategory").submit();
            }
        </script>

        <!-- Favicons-->
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

        <!-- GOOGLE WEB FONT -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

        <!-- BASE CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

        <!-- SPECIFIC CSS -->
        <link href="css/home_1.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="css/custom.css" rel="stylesheet">
    </head>

    <body data-layout-mode="light"  data-sidebar-size="default" data-theme-layout="vertical" class="bg-[#EEF0FC] dark:bg-gray-900">

        <jsp:include page="components/leftBar.jsp" />

        <jsp:include page="components/topBar.jsp" />


        <div class="ltr:flex flex-1 rtl:flex-row-reverse">
            <div class="page-wrapper relative ltr:ms-auto rtl:me-auto rtl:ms-0 w-[calc(100%-260px)] px-4 pt-[64px] duration-300">
                <div class="xl:w-full">        
                    <div class="flex flex-wrap">
                        <div class="flex items-center py-4 w-full">
                            <div class="w-full">                    
                                <div class="">
                                    <div class="flex flex-wrap justify-between">
                                        <div class="items-center ">
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Customers</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Admin</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Customers</li>
                                            </ol>
                                        </div>
                                        <div class="flex items-center">
                                            <div class="today-date leading-5 mt-2 lg:mt-0 form-input w-auto rounded-md border inline-block border-primary-500/60 dark:border-primary-500/60 text-primary-500 bg-transparent px-3 py-1 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-primary-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700">
                                                <input type="text" class="dash_date border-0 focus:border-0 focus:outline-none" readonly  required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end container-->

                <div class="xl:w-full  min-h-[calc(100vh-138px)] relative pb-14"> 
                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4">
                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-12 xl:col-span-12">
                            <div class="w-full relative mb-4">  
                                <div class="flex-auto p-0 md:p-4">
                                    <div class="mb-4 border-b border-gray-200 dark:border-slate-700" data-fc-type="tab">
                                        <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" aria-label="Tabs">
                                            <!--                                            <li class="me-2" role="presentation">
                                                                                            <button class="inline-block p-4 rounded-t-lg border-b-2 active " id="all-tab" data-fc-target="#all" type="button" role="tab" aria-controls="all" aria-selected="false">All <span class="text-slate-400">(4251)</span></button>
                                                                                        </li>
                                                                                        <li class="me-2" role="presentation">
                                                                                            <button class="inline-block p-4 rounded-t-lg border-b-2 border-transparent hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="new-tab" data-fc-target="#new" type="button" role="tab" aria-controls="new" aria-selected="false">New <span class="text-slate-400">(3255)</span></button>
                                                                                        </li>
                                                                                        <li class="me-2" role="presentation">
                                                                                            <button class="inline-block p-4 rounded-t-lg border-b-2 border-transparent hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300" id="vip-tab" data-fc-target="#vip" type="button" role="tab" aria-controls="vip" aria-selected="false">VIP <span class="text-slate-400">(25)</span></button>
                                                                                        </li>-->
                                        </ul>
                                    </div>
                                    <div>
                                        <button class="inline-block focus:outline-none bg-brand-500 mt-1 text-white hover:bg-brand-600 hover:text-white  text-md font-medium py-2 px-4 rounded">
                                            Add product
                                        </button>
                                    </div>
                                    <span>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </span>

                                    <div class="flex flex-wrap gap-4 mb-3">

                                        <nav class="categories">
                                            <ul class="clearfix">
                                                <li><div>
                                                        <button style="width: 140px; height: 40px" type="button"  data-fc-autoclose="both" data-fc-type="dropdown" class="px-2 py-1 lg:px-4 bg-transparent text-gray-900 text-sm font-medium mb-2  focus:outline-none  rounded transition border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10  dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Category <i class="fas fa-chevron-down ms-1 text-xs self-center"></i></button>
                                                    </div>
                                                    <div id="menu">
                                                        <ul>
                                                            <c:forEach var="c" items="${categories}">
                                                                <li><span><a href="productList?category=${c.name}">${c.name}</a></span>
                                                                    <ul>
                                                                        <c:forEach var="sc" items="${subCategories}">
                                                                            <c:if test="${c.id == sc.category_id}">
                                                                                <li><a href="productList?subcategory=${sc.name}">${sc.name}</a></li>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </li>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </nav>

                                        <nav class="categories">
                                            <ul class="clearfix">
                                                <li><div>
                                                        <button style="width: 140px; height: 40px" type="button"  data-fc-autoclose="both" data-fc-type="dropdown" class="px-2 py-1 lg:px-4 bg-transparent text-gray-900 text-sm font-medium mb-2  focus:outline-none  rounded transition border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10  dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Status <i class="fas fa-chevron-down ms-1 text-xs self-center"></i></button>
                                                    </div>
                                                    <div id="menu">
                                                        <ul>
                                                            <c:forEach var="ps" items="${listProductStatus}">
                                                                <li><a href="productList?status=${ps.name}">${ps.name}</a></li>
                                                            </c:forEach>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </nav>

                                        <div class="ms-auto">
                                            <form action="productList" method="get">
                                                <div class="relative">
                                                    <input type="search" value="${search}" name="search" id="searchTable" onkeyup="searchTable()" class="form-input w-52 rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-primary-500 dark:focus:border-primary-500 dark:hover:border-slate-700 pl-10 p-2.5" placeholder="search">
                                                </div>
                                            </form>                                               
                                        </div>
                                    </div>

                                    <div id="myTabContent">
                                        <div class="active  p-4 bg-gray-50 rounded-lg dark:bg-gray-900" id="all" role="tabpanel" aria-labelledby="all-tab">
                                            <div class="grid grid-cols-1 p-0 md:p-4">
                                                <div class="sm:-mx-6 lg:-mx-8">
                                                    <div class="relative overflow-x-auto block w-full sm:px-6 lg:px-8">
                                                        <table id="userTable" class="w-full">
                                                            <thead class="bg-gray-50 dark:bg-slate-700/20">
                                                                <tr>

                                                                    <th scope="col" data-sort="text" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Product & Title
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Categories
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Stock status
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Attributes
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Price
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Date
                                                                    </th>
                                                                    <th scope="col" class="p-3 text-xs font-medium tracking-wider text-left text-gray-700 dark:text-gray-400 uppercase">
                                                                        Action
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <!-- 1 -->
                                                                <tr class="bg-white border-b border-dashed dark:bg-gray-900 dark:border-gray-700/40">

                                                                    <td class="p-3 text-sm font-medium whitespace-nowrap dark:text-white">
                                                                        <div class="flex items-center">
                                                                            <img src="assets/images/products/02.png" alt="" class="me-2 h-8 inline-block">
                                                                            <div class="self-center">                                                                        
                                                                                <h5 class="text-sm font-semibold text-slate-700 dark:text-gray-400">New Colorfull Shoes </h5>
                                                                                <span class="block  font-medium text-slate-500">Size-04-15 (Model 2023)</span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                        <a href="#" class="text-brand-500 underline">Footwear</a>,
                                                                        <a href="#" class="text-brand-500 underline">Lifestayle</a>
                                                                    </td>
                                                                    <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                        <span class="bg-green-600/5 text-green-600 text-[11px] font-medium px-2.5 py-0.5 rounded h-5">In stock</span>
                                                                    </td>
                                                                    <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                        <div>color : 
                                                                            <span class="ms-2">
                                                                                <i class="icofont-brand-mts text-purple-500"></i> 
                                                                                <i class="icofont-brand-mts text-pink-500"></i>
                                                                                <i class="icofont-brand-mts text-blue-500"></i>
                                                                                <i class="icofont-brand-mts text-green-500"></i>
                                                                            </span>
                                                                        </div>
                                                                        <div>Size : 
                                                                            <span class="ms-2">S</span>
                                                                            <span class="mx-1">M</span>
                                                                            <span class="mx-1">L</span>
                                                                            <span class="mx-1">XL</span>
                                                                            <span class="mx-1">XXL</span>
                                                                        </div>
                                                                    </td>
                                                                    <td class="p-3 font-semibold text-lg text-gray-800 whitespace-nowrap dark:text-gray-400">
                                                                        $99 <del class="text-slate-500 font-normal">$130</del>
                                                                    </td>
                                                                    <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                        12 Sep 2023
                                                                    </td>
                                                                    <td class="p-3 text-sm text-gray-500 whitespace-nowrap dark:text-gray-400">
                                                                        <a href="#"><i class="icofont-ui-edit text-lg text-gray-500 dark:text-gray-400"></i></a>
                                                                        <a href="#"><i class="icofont-ui-delete text-lg text-red-500 dark:text-red-400"></i></a>
                                                                    </td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div><!--end div-->
                                                </div><!--end div-->
                                            </div><!--end grid-->
                                            <div class="flex justify-between mt-4">
                                                <jsp:include page="components/pagination.jsp"/>
                                            </div>
                                        </div>

                                    </div>
                                </div><!--end card-->                                  
                            </div><!--end col-->                        
                        </div> <!--end grid-->                                        
                        <!-- footer -->
                        <div class="absolute bottom-0 -left-4 -right-4 block print:hidden border-t p-4 h-[52px] dark:border-slate-700/40">
                            <div class="container">
                                <!-- Footer Start -->
                                <footer
                                    class="footer bg-transparent  text-center  font-medium text-slate-600 dark:text-slate-400 md:text-left "
                                    >
                                    &copy;
                                    <script>
                                        var year = new Date();
                                        document.write(year.getFullYear());
                                    </script>
                                    Robotech
                                    <span class="float-right hidden text-slate-600 dark:text-slate-400 md:inline-block"
                                          >Crafted with <i class="ti ti-heart text-red-500"></i> by
                                        Mannatthemes</span
                                    >
                                </footer>
                                <!-- end Footer -->
                            </div>
                        </div>


                    </div><!--end container-->
                </div><!--end page-wrapper-->
            </div><!--end /div-->
            <!-- JAVASCRIPTS -->
            <!-- <div class="menu-overlay"></div> -->
            <script src="viewsAdmin/assets/libs/lucide/umd/lucide.min.js"></script>
            <script src="viewsAdmin/assets/libs/simplebar/simplebar.min.js"></script>
            <script src="viewsAdmin/assets/libs/flatpickr/flatpickr.min.js"></script>
            <script src="viewsAdmin/assets/libs/@frostui/tailwindcss/frostui.js"></script>

            <script src="viewsAdmin/assets/libs/apexcharts/apexcharts.min.js"></script>
            <script src="viewsAdmin/assets/js/pages/analytics-index.init.js"></script>
            <script src="viewsAdmin/assets/js/app.js"></script>
            <!-- JAVASCRIPTS -->
            <script src="${pageContext.request.contextPath}/viewsAdmin/assets/js/dataTable.js"></script>

            <!-- COMMON SCRIPTS -->
            <script src="js/common_scripts.min.js"></script>
            <script src="js/main.js"></script>

            <!-- SPECIFIC SCRIPTS -->
            <script src="js/carousel-home.js"></script>
    </body>
</html>