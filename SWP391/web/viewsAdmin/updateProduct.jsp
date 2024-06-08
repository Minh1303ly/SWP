<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <script type="text/javascript">

        </script>

    </head>

    <body data-layout-mode="light"  data-sidebar-size="default" data-theme-layout="vertical" class="bg-[#EEF0FC] dark:bg-gray-900">

        <jsp:include page="components/leftBar.jsp" />

        <jsp:include page="components/topBar.jsp" />

        <jsp:include page="components/notification.jsp" />

        <div class="ltr:flex flex-1 rtl:flex-row-reverse">
            <div class="page-wrapper relative ltr:ms-auto rtl:me-auto rtl:ms-0 w-[calc(100%-260px)] px-4 pt-[64px] duration-300">
                <div class="xl:w-full">        
                    <div class="flex flex-wrap">
                        <div class="flex items-center py-4 w-full">
                            <div class="w-full">                    
                                <div class="">
                                    <div class="flex flex-wrap justify-between">
                                        <div class="items-center ">
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Add Product</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Admin</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Add Product</li>
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
                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4 justify-between">
                        <c:set var="p" value="${product}"/>
                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-9 xl:col-span-9">
                            <div class="w-full relative mb-4">  
                                <div class="flex-auto p-0 md:p-4">                                   
                                    <div class="mb-2">
                                        <label for="thumbnail" class="font-medium text-sm text-slate-600 dark:text-slate-400">Thumbnail</label>
                                        <input type="text" id="thumbnail" value="${p.img1}" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700" placeholder="Title" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="img2" class="font-medium text-sm text-slate-600 dark:text-slate-400">Image 2</label>
                                        <input type="text" id="img2" value="${p.img2}" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700" placeholder="Title" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="title" class="font-medium text-sm text-slate-600 dark:text-slate-400">Title</label>
                                        <input type="text" id="title" value="${p.name}" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700" placeholder="Title" required>
                                    </div>
                                    <div class="mb-2">
                                        <label for="category" class="font-medium text-sm text-slate-600 dark:text-slate-400">Category</label>
                                        <select id="category" class="w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700">
                                            <option  class="dark:text-slate-700">All Category</option>
                                            <option  class="dark:text-slate-700">Electronics</option>
                                            <option  class="dark:text-slate-700">Furniture</option>
                                            <option  class="dark:text-slate-700">Footwear</option>
                                            <option  class="dark:text-slate-700">Clothes</option>
                                        </select>
                                    </div>
                                    <div class="mb-2">
                                        <label for="description" class="font-medium text-sm text-slate-600 dark:text-slate-400">Description</label>
                                        <textarea id="description" rows="3" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-1 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700" placeholder="Description ..."></textarea>
                                    </div>
                                    <div class="mb-2">
                                        <div class="grid grid-cols-2 gap-3">
                                            <div class="col-span-1">
                                                <label for="Product-date" class="font-medium text-sm text-slate-600 dark:text-slate-400">Product Date</label>
                                                <input type="text" id="Product-date" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700" name="foo">
                                            </div>
                                            <div class="col-span-1">
                                                <label for="price" class="font-medium text-sm text-slate-600 dark:text-slate-400">Price</label>
                                                <input type="title" id="price" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700" placeholder="Price" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-2">
                                        <label for="gender" class="font-medium text-sm text-slate-600 dark:text-slate-400">For this product</label>
                                        <select id="gender" class="w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700">
                                            <option  class="dark:text-slate-700">-- Gender --</option>
                                            <option  class="dark:text-slate-700">Male</option>
                                            <option  class="dark:text-slate-700">Female</option>
                                            <option  class="dark:text-slate-700">Children</option>
                                            <option  class="dark:text-slate-700">Other</option>
                                        </select>                                       
                                    </div>
                                    <div class="mb-2">
                                        <label for="sizing" class="font-medium text-sm text-slate-600 dark:text-slate-400">Size</label>
                                        <select id="sizing" class="form-input w-full rounded-md mt-1 border border-slate-300/60 dark:border-slate-700 dark:text-slate-300 bg-transparent px-3 py-2 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-slate-400 focus:border-brand-500 dark:focus:border-brand-500  dark:hover:border-slate-700">
                                            <option>Size</option>
                                            <option>SM</option>
                                            <option>MD</option>
                                            <option>LG</option>
                                            <option>XL</option>
                                            <option>XXL</option>
                                        </select>
                                    </div>

                                    <div class="">
                                        <button class="px-2 py-2 lg:px-4 bg-brand  text-white text-sm  rounded hover:bg-brand-600 border border-brand-500">Add Product</button>
                                        <button class="px-2 py-2 lg:px-4 bg-transparent  text-brand text-sm  rounded transition hover:bg-brand-500 hover:text-white border border-brand font-medium">Save Product</button>
                                    </div>
                                </div><!--end card-body--> 
                            </div><!--end card-->                                  
                        </div><!--end col-->  
                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-3 xl:col-span-3">
                            <div class="w-full relative mb-4">  
                                <div class="flex-auto p-0 md:p-4">                                   
                                    <div>
                                        <p class="text-slate-700 text-base dark:text-slate-400">Thumbnail</p>
                                        <img src="${p.img1}" alt="" class="w-20 h-auto">
                                    </div>
                                    <div>
                                        <p class="text-slate-700 text-base dark:text-slate-400">Product Image 2</p>
                                        <img src="${p.img2}" alt="" class="w-20 h-auto">
                                    </div>
                                    <div class="mb-5">
                                        <p class="text-slate-700 text-base dark:text-slate-400">Product Title</p>
                                        <h4 class="text-xl font-semibold text-slate-700 dark:text-slate-300">Mannat HD, Smart LED Fire TV</h4>
                                    </div>
                                    <div class="mb-5">
                                        <p class="text-slate-600 text-base dark:text-slate-400">Description</p>
                                        <h4 class="text-base font-medium text-slate-900 dark:text-slate-300">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h4>
                                    </div>
                                    <div class="mb-5">
                                        <p class="text-slate-600 text-base dark:text-slate-400">Pro. Date</p>
                                        <h4 class="text-base font-semibold text-slate-900 dark:text-slate-300">02/05/2023</h4>
                                    </div>
                                    <div class="mb-5">
                                        <p class="text-slate-600 text-base dark:text-slate-400">For this product</p>
                                        <h4 class="text-base font-semibold text-slate-900 dark:text-slate-300">Other</h4>
                                    </div>
                                    <div class="mb-5">
                                        <p class="text-slate-600 text-base dark:text-slate-400">Size</p>
                                        <h4 class="text-base font-semibold text-slate-900 dark:text-slate-300">SM, MD, LG, XL</h4>
                                    </div>
                                </div><!--end card-body--> 
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
        <script src="${pageContext.request.contextPath}/viewsAdmin/assets/js/product.js"></script>

        <!-- COMMON SCRIPTS -->
        <script src="js/common_scripts.min.js"></script>
        <script src="js/main.js"></script>

        <!-- SPECIFIC SCRIPTS -->
        <script src="js/carousel-home.js"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>